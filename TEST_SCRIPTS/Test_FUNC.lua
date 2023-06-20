local scriptVar = "This"

function FUNC_TEST(property,currentValue,NamedValue)
  NamedValue = NamedValue or scriptVar or ""
  -- print("SCRIPT: FUNC_TEST = ["..tostring(currentValue).."] ["..tostring(NamedValue).."]")
  local newValue = property.."+"..currentValue.."+"..NamedValue
  return newValue
end

function FUNC_TEST_1(property,currentValue,NamedValue)
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

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = [[Test_FUNC.pak]],
	MOD_AUTHOR = [[Wbertro]],
	MOD_DESCRIPTION = [[Test FUNC()]],
	LUA_AUTHOR = [[Wbertro]],
  AMUMSS_SUPPRESS_MSG = "UNUSED_VARIABLE",
	MODIFICATIONS = {
		{
			MBIN_CT = {

      {
          MBIN_FILE_SOURCE    = 'GCSPACESHIPGLOBALS.GLOBAL.MBIN',
          EXML_CHANGE_TABLE    = {
              {
                  REPLACE_TYPE         = 'All',
                  INTEGER_TO_FLOAT    = 'Force',
                  VALUE_CHANGE_TABLE     = {
                      {'BoostThrustForce', 'BoostLimit()'},
                      {'BoostMaxSpeed', 'BoostMaxSpeed()'},
                      {'BoostFalloff', '0.1'},
                      {'BoostingTurnDamp', 'BoostingTurnDamp()'},
                      {'DirectionBrakeMin', '()'},
                      {'DirectionBrake', 'DirectionBrake()'},
                  },
              },
          },
      },

			{
				MBIN_FS = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
				EXML_CT = {
          {
            COMMENT = [[Test of a non-existant FUNC() inside a VCT
            This will not compile]],
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
            COMMENT = [[Test of FUNC() inside a VCT
            This will not compile]],
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
            COMMENT = [[Test of FUNC() inside a VCT
            This will not compile]],
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

					},
			},
			},
		}, --103 global replacement
	},
}