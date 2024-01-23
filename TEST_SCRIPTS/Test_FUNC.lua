local scriptVar = "This"
local ToBeFilledTable = {} -- values will be filled by FUNC_TEST() and retrieved by FUNC_TEST_2()
local varNum = 0

function numVar()
  varNum = varNum + 1
  print("==> varNum = "..varNum)
end

function FUNC_TEST(property,currentValue,NamedValue)
  numVar() -- increase numVar
  NamedValue = NamedValue or scriptVar or ""
  -- print("SCRIPT: FUNC_TEST = ["..tostring(currentValue).."] ["..tostring(NamedValue).."]")
  local newValue = property.."+"..currentValue.."+"..NamedValue
  ToBeFilledTable[#ToBeFilledTable+1] = newValue -- save value for later use (example of using a local script table)
  return newValue
end

function FUNC_TEST_1(property,currentValue,NamedValue)
  numVar() -- increase numVar
  NamedValue = NamedValue or ""
  -- print("SCRIPT: FUNC_TEST_1 = ["..tostring(currentValue).."]")
  local pos1 = string.find(currentValue,"+",1,true)
  if pos1 ~= nil then
    local s1 = string.sub(currentValue,pos1 + 1)
    if string.find(s1,"+",1,true) ~= nil then
      local newValue = string.sub(s1,1,string.find(s1,"+",1,true)-1)
      return newValue
    end
  end
  return currentValue
end

function FUNC_TEST_2(property,currentValue,NamedValue)
  numVar() -- increase numVar
  local newValue = ""
  for i=1,#ToBeFilledTable do
    if ToBeFilledTable[i] ~= "" then
      newValue = ToBeFilledTable[i] -- retrieve value (example of using a local script table)
      ToBeFilledTable[i] = "" -- this value was used
    end
  end
  return newValue
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = [[Test_FUNC.pak]],
	MOD_AUTHOR = [[Wbertro]],
	MOD_DESCRIPTION = [[Test FUNC()]],
	LUA_AUTHOR = [[Wbertro]],
  AMUMSS_SUPPRESS_MSG = "UNUSED_VARIABLE",
	MODIFICATIONS = {
		{ -- 1st MODIFICATIONS sub-table
			MBIN_CT = {

        {
            MBIN_FILE_SOURCE    = 'GCSPACESHIPGLOBALS.GLOBAL.MBIN',
            EXML_CHANGE_TABLE    = {
                {
                    REPLACE_TYPE         = 'All',
                    INTEGER_TO_FLOAT    = 'Force',
                    VALUE_CHANGE_TABLE     = {
                        {'BoostThrustForce', 'BoostLimit()'},       -- will fail
                        {'BoostMaxSpeed', 'BoostMaxSpeed()'},       -- will fail
                        {'BoostFalloff', '0.1'},                    -- does the replacements
                        {'BoostingTurnDamp', 'BoostingTurnDamp()'}, -- will fail
                        {'DirectionBrakeMin', '()'},                -- will fail
                        {'DirectionBrake', 'DirectionBrake()'},     -- will fail
                    },
                },
            },
        },

        {
          MBIN_FS = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
          EXML_CT = {
            {
              COMMENT = [[#1 Test of a non-existant FUNC() inside a VCT
              The EXML will not compile]],
              PKW = [[GcBaseBuildingEntry.xml]],
              REPLACE_TYPE = "ONCE", -- force only ONCE
              WIS = {
                  {
                    [[BuildableOnPlanetBase]], [[True]],
                  },
                },
              VCT = {
                  {[[ID]], "NON_EXISTANT()",}, -- Function not found, string will be used as such
                },
            },

            {
              COMMENT = [[#2 Test of FUNC() inside a VCT
              The EXML will not compile]],
              PKW = [[GcBaseBuildingEntry.xml]],
              REPLACE_TYPE = "ONCE", -- force only ONCE
              WIS = {
                  {
                    [[BuildableOnPlanetBase]], [[True]],
                  },
                },
              VCT = {
                  {[[ID]], "FUNC_TEST()",},
                },
            },

            {
              COMMENT = [[#3 Test of FUNC() inside a VCT
              The EXML will not compile]],
              PKW = [[GcBaseBuildingEntry.xml]],
              REPLACE_TYPE = "ONCE", -- force only ONCE
              WIS = {
                  {
                    [[BuildableOnPlanetBase]], [[True]],
                  },
                },
              VCT = {
                  {[[ID]], "FUNC_TEST_1()",}, -- reverts change made above
                },
            },

            {
              COMMENT = [[#4 Test of FUNC() inside a VCT
              The EXML will not compile]],
              PKW = [[GcBaseBuildingEntry.xml]],
              REPLACE_TYPE = "ONCE", -- force only ONCE
              WIS = {
                  {
                    [[BuildableOnPlanetBase]], [[True]],
                  },
                },
              VCT = {
                  {[[ID]], "FUNC_TEST_2()",}, -- redo change made above by FUNC_TEST()
                },
            },

            {
              COMMENT = [[#5 Test of FUNC() inside a VCT
              The EXML will not compile]],
              VCT = {
                  {[[IGNORE]], "FUNC_TEST_3()",}, -- just trigger this code
                },
            },

            },
        },
        
			},
		},  -- END: 1st MODIFICATIONS sub-table
    
	}, --105 global replacement
}

function FUNC_TEST_3(property,currentValue,NamedValue)
  print()
  numVar() -- increase numVar
  print()
  print("==> THIS IS A TEST of using a function to run some code inside the script without doing anything else")
  -- print("        #NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CT[2].EXML_CT = "..#NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CT[2].EXML_CT)
  print("==> The code in this function dynamically adds a #6 Test section below after this #5 Test")
  -- NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CT[2].EXML_CT[#NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CT[2].EXML_CT + 1] = {
  local newTable = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[2].EXML_CHANGE_TABLE
  newTable[#newTable + 1 ] = {
              COMMENT = [[#6 Test(dynamically added by #5 Test): of a non-existant FUNC() inside a VCT (just a repeat of #1 Test above)
              The EXML will not compile]],
              PKW = [[GcBaseBuildingEntry.xml]],
              REPLACE_TYPE = "ONCE", -- force only ONCE
              WIS = {
                  {
                    [[BuildableOnPlanetBase]], [[True]],
                  },
                },
              VCT = {
                  {[[ID]], "NON_EXISTANT_1()",}, -- Function not found, string will be used as such
                },
            }
  
  return "IGNORE"
end

