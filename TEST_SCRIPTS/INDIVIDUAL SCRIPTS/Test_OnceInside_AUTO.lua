NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]  = "Test_OnceInside_AUTO.pak",
  ["LUA_AUTHOR"]    = "Wbertro",
  ["NMS_VERSION"]   = "ALL",
  ["MODIFICATIONS"] = 
  {
		{
      MBIN_CHANGE_TABLE  = 
      {
        {
          MBIN_FILE_SOURCE  = 'GCENVIRONMENTGLOBALS.GLOBAL.MBIN',
          EXML_CHANGE_TABLE = {
            {
              COMMENT = [[5 actions: replace values using MATH_OP]],
              MATH_OPERATION      = '*',
              PRECEDING_KEY_WORDS = {'Ultra', 'LODAdjust'},
              VALUE_CHANGE_TABLE  = {
                {'Ignore', 3},
                {'Ignore', 5},
                {'Ignore', 7},
                {'Ignore', 9},
                {'Ignore', 11}
              }
            },
            {
              COMMENT = [[============  AREA TEST_OnceInside_AUTO Ignore  ==============
              5 actions: replace values using REPLACE_TYPE = "OnceInside"]],
              REPLACE_TYPE        = 'OnceInside',
              PRECEDING_KEY_WORDS = {'Ultra', 'LODAdjust'},
              VALUE_CHANGE_TABLE  = {
                {'Ignore', 2},
                {'Ignore', 4},
                {'Ignore', 6},
                {'Ignore', 8},
                {'Ignore', 10}
              },
            },
            {
              COMMENT = [[============  AREA TEST_OnceInside_AUTO IGNORE ==============
              5 actions: replace values using REPLACE_TYPE = "OnceInside"]],
              REPLACE_TYPE        = 'OnceInside',
              PRECEDING_KEY_WORDS = {'Ultra', 'LODAdjust'},
              VALUE_CHANGE_TABLE  = {
                {'IGNORE', 2},
                {'IGNORE', 4},
                {'IGNORE', 6},
                {'IGNORE', 8},
                {'IGNORE', 10}
              },
            },
            {
              COMMENT = [[============  AREA TEST_OnceInside_AUTO MIXED CASE ==============
              5 actions: replace values using REPLACE_TYPE = "OnceInside"]],
              REPLACE_TYPE        = 'OnceInside',
              PRECEDING_KEY_WORDS = {'Ultra', 'LODAdjust'},
              VALUE_CHANGE_TABLE  = {
                {'Ignore', 2},
                {'iGnOrE', 4},
                {'IGNORE', 6},
                {'Ignore', 8},
                {'IGNORE', 10}
              },
            },
            {
              COMMENT = [[5 actions: replace values using REPLACE_TYPE = "ALLInsideSection"
              NOT A GOOD WAY TO DO IT
              1st VCT replaces 1st section found with all '2'
              all other VCT fail with NO replacement done, there are no other sections meeting the keywords]],
              REPLACE_TYPE        = 'ALLInsideSection',
              PRECEDING_KEY_WORDS = {'Ultra', 'LODAdjust'},
              VALUE_CHANGE_TABLE  = {
                {'Ignore', 2},
                {'Ignore', 4},
                {'Ignore', 6},
                {'Ignore', 8},
                {'Ignore', 10}
              },
            },
          },
        },
      },
		},
	},	--25 global replacements
}