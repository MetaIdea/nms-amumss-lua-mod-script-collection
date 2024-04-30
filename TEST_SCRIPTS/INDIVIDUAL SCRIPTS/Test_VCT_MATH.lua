-- if true then
  -- print()
-- else
  -- print()
-- end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]             = "Value_GROUP_change.pak",
["MOD_DESCRIPTION"]            = "",
["MOD_AUTHOR"]                = "Wbertro",
["NMS_VERSION"]                = "",
["MODIFICATIONS"]             = 
    {
        {
            ["MBIN_CHANGE_TABLE"]     = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]     = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"]     = 
                    {
                    
                        -- LINE NUMBERS MAY CHANGE WITH NMS UPDATES
                        
                        {
                            COMMENT = [[1: 4 actions  WORKS in v4.0 only
                            ]],
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers",}, -- finds section 133-138
                            ["LINE_OFFSET"]     = "1", --to advanced to one line into the section >> 134
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"IGNORE", "1",}, -- line 134
                                {"IGNORE", "2",}, -- line 135
                                {"IGNORE", "3",}, -- line 136
                                {"IGNORE", "4",}, -- line 137
                            },
                        },
                        
                        {
                            COMMENT = [[2: 4 actions  WORKS with v3.9.5.98W and v4.0
                            ]],
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers",}, -- finds section 133-138
                            -- ["LINE_OFFSET"]         = "1", -- use here if you want to hide the not matching lines
                            ["MATH_OPERATION"]        = "*F:IGNORE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]    = {
                                {"IGNORE", 5}
                            },
                        },
                        
                       {
                            COMMENT = [[3: 1 actions  WORKS with v3.9.5.98W and v4.0
                            ]],
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers",}, -- finds section 133-138
                            ["LINE_OFFSET"]         = "1", -- to advanced to one line into the section >> 134
                            -- if there were multiple sections pointed to by Keywords, replacement would be done there also
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"IGNORE", "24",}, -- because of only one entry here, this is line 134 = newvalue: 24
                            },
                        },
                        
                       {
                            COMMENT = [[4: 1 actions  WORKS with v3.9.5.98W and v4.0
                            ]],
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers",}, -- finds section 133-138
                            ["LINE_OFFSET"]         = "1", -- to advanced to one line into the section >> 134
                            ["REPLACE_TYPE"]        = "ALL", -- should do one NUMBER replacement in ALL sections
                            -- if there were multiple sections pointed to by Keywords, replacement would be done there also
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"IGNORE", "24",}, -- because of only one entry here, this is line 134 = newvalue: 24
                            },
                        },
                        
                        {
        -- 4 or 1 action ????
                            COMMENT = [[5: 4 actions  WORKS in v4.0 only
                            ]],
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers",}, -- finds section 133-138
                            ["LINE_OFFSET"]         = "1", -- to advanced to one line into the section >> 134
                            ["REPLACE_TYPE"]        = "ALLINSECTION", -- tell to continue replacing in the section if a match
                            
        -- if one VCT, do all in section
        -- if > 1 VCT, do exch VCT ony
                            -- LINE_OFFSET is turned OFF AFTER the first change
        -- maybe means ???
                            -- if there were multiple sections pointed to by PKW, replacement would be done there also
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"IGNORE", "1",}, -- all entry in the section are changed
                            },
                        },
                        
                        {
                            COMMENT = [[6: 3 actions  WORKS in v4.0 only
                            ]],
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers",},
                            ["LINE_OFFSET"]     = "1",
                            ["REPLACE_TYPE"]        = "ALL", -- not required here for this case
                            -- if there were multiple sections pointed to by PKW, replacement would be done there also
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"IGNORE", "10",},     -- line 134
                                {"IGNORE", "20",},     -- line 135
                                {"IGNORE", "IGNORE",}, -- line 136, this one skips to next one
                                {"IGNORE", "40",},     -- line 137
                            },
                        },

                        {
                          -- NOTE: as we are selecting the same section again, the values include all the changes above
                            COMMENT = [[7: 1 actions  but wrong result, WORKS with v3.9.5.98W and v4.0
                            ]],
                            ["PRECEDING_KEY_WORDS"]   = "SpaceshipSpawnFreqMultipliers",
                            ["MATH_OPERATION"]        = "*L:4", --current line is 134 + 4 lines => 138 is where the value to multiply comes from
                            ["VALUE_CHANGE_TABLE"]    = {       --line 138 does not have a value
                                {"IGNORE", 5}, -- does one replacement at line 134: (value from line 138: 0) * 5 = newvalue: 0
                            }, -- with this syntax, you would need to create other EXML_CHANGE_TABLE sub-tables to change other lines in the section
                        },
                        
                        {
                          -- NOTE: as we are selecting the same section again, the values include all the changes above
                            COMMENT = [[8: 1 actions  WORKS with v3.9.5.98W and v4.0
                            ]],
                            ["PRECEDING_KEY_WORDS"]   = "SpaceshipSpawnFreqMultipliers",
                            --["LINE_OFFSET"]     = "1",        -- to advanced one line into the section >> 134, ok to use but is the same result since...
                            ["MATH_OPERATION"]        = "*L:3", -- MATH_OPERATION auto-advance to line 134 (because it is the 1st line with a NUMBER) 
                            ["VALUE_CHANGE_TABLE"]    = {       -- current line is 134 + 3 lines => 137 is where the value to multiply comes from
                                {"IGNORE", 5}, -- does one replacement at line 134: (value from line 137: 10) * 5 = newvalue: 50
                            }, -- with this syntax, you would need to create other EXML_CHANGE_TABLE sub-tables to change other lines in the section
                        },
                        
                        {
                          -- NOTE: as we are selecting the same section again, the values include all the changes above
                          -- JUST AN EXAMPLE
                            COMMENT = [[9: 1 actions  WORKS with v3.9.5.98W and v4.0
                            ]],
                            ["PRECEDING_KEY_WORDS"]   = "SpaceshipSpawnFreqMultipliers",
                            ["LINE_OFFSET"]     = "2",        -- to advanced two lines into the section >> 135
                            ["MATH_OPERATION"]        = "*L:1", -- MATH_OPERATION happy with line 136 (because it is a NUMBER) 
                            ["VALUE_CHANGE_TABLE"]    = {       -- current line is 135 + 1 lines => 136 is where the value to multiply comes from
                                {"IGNORE", 5}, -- does one replacement at line 135: (value from line 136: 25) * 5 = newvalue: 125
                            }, -- with this syntax, you would need to create other EXML_CHANGE_TABLE sub-tables to change other lines in the section
                        },
                        
                        {
                          -- NOTE: as we are selecting the same section again, the values include all the changes above
                            COMMENT = [[10: 4 actions  WORKS in v4.0 only
                            ]],
                            ["PRECEDING_KEY_WORDS"]   = "SpaceshipSpawnFreqMultipliers",
                            ["LINE_OFFSET"]     = "1",        -- to advanced one line into the section >> 134, 
                            ["MATH_OPERATION"]        = "!*L:3", -- MATH_OPERATION with the lockValue trigger '!' 
                            ["VALUE_CHANGE_TABLE"]    = {       -- current line is 134 + 3 lines => 137 is where the value to multiply comes from (and LOCKED)
                                {"IGNORE", 1},    -- line 134: (value from line 137: 40) * 1 = newvalue: 40
                                {"IGNORE", "2",}, -- line 135: (value from line 137: 40) * 2 = newvalue: 80 
                                {"IGNORE", 3,},   -- line 136: (value from line 137: 40) * 3 = newvalue: 120
                                {"IGNORE", "4",}, -- line 137: (value from line 137: 40) * 4 = newvalue: 160
                            }, -- with this syntax, you would need to create other EXML_CHANGE_TABLE sub-tables to change other lines in the section
                        },
                        
                        { --1 actions
                          COMMENT = [[11:]],
                          MATH_OP = "%",
                          VCT = {
                            {"LocatorScatterChanceOfCapitalShips", 3, "NamedValueTest"},
                          },
                        },
                        
                        { --1 actions
                          COMMENT = [[12:]],
                          MATH_OP = "*",
                          VCT = {
                            {"LocatorScatterChanceOfCapitalShips", 3, "{:}NamedValueTest"},
                          },
                        },
                        
                        { --1 actions
                          COMMENT = [[13:]],
                          MATH_OP = "^",
                          VCT = {
                            {"LocatorScatterChanceOfCapitalShips", 3, "{:}NamedValueTest"},
                          },
                        },
                        
                        { --1 actions
                          COMMENT = [[14:]],
                          MATH_OP = "//",
                          VCT = {
                            {"LocatorScatterChanceOfCapitalShips", 3},
                          },
                        },
                        
                    },
                },

                {
                  MBIN_FS = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
                  EXML_CT = {

                    {
                      COMMENT = [[1A: Test of MATH_OPERATION
                      This could compile]],
                      PKW = [[GcBaseBuildingEntry.xml]],
                      REPLACE_TYPE = "ONCE", -- force only ONCE
                      WIS = {
                          {
                            [[BuildableOnPlanetBase]], [[True]],
                          },
                        },
                      MATH_OP = "*",
                      VCT = {
                            {[[BuildEffectAccelerator]], "6","saveBuildEffectAccelerator"}, -- remember original value
                        },
                    },

                    {
                      COMMENT = [[1B: Test of MATH_OPERATION
                      This could compile]],
                      PKW = [[GcBaseBuildingEntry.xml]],
                      REPLACE_TYPE = "ONCE", -- force only ONCE
                      WIS = {
                          {
                            [[BuildableOnPlanetBase]], [[True]],
                          },
                        },
                      MATH_OP = "*FB:BuildEffectAccelerator",
                      VCT = {
                            {[[MinimumDeleteDistance]], "1","saveMinimumDeleteDistance"}, -- change value based on: * BuildEffectAccelerator
                        },
                    },

                    {
                      COMMENT = [[1C: Test of MATH_OPERATION => reset to original values using NamedValue
                      This could compile]],
                      PKW = [[GcBaseBuildingEntry.xml]],
                      REPLACE_TYPE = "ONCE", -- force only ONCE
                      WIS = {
                          {
                            [[BuildableOnPlanetBase]], [[True]],
                          },
                        },
                      VCT = {
                            {[[BuildEffectAccelerator]], "?","{:}saveBuildEffectAccelerator"}, -- reset to original value
                            {[[MinimumDeleteDistance]], "?","{:}saveMinimumDeleteDistance"}, -- reset to original value
                        },
                    },

                    {
                      COMMENT = [[2: Test of INLINE MATH OP inside a VCT
                      This could compile]],
                      PKW = [[GcBaseBuildingEntry.xml]],
                      REPLACE_TYPE = "ONCE", -- force only ONCE
                      WIS = {
                          {
                            [[BuildableOnPlanetBase]], [[True]],
                          },
                        },
                      VCT = {
                            {[[BuildEffectAccelerator]], "@*6",}, -- Inline MATH_OP: new value = (current value) * 6
                            {[[MinimumDeleteDistance]], "@ 7 * FB:BuildEffectAccelerator",}, -- Inline MATH_OP: new value = (value of BuildEffectAccelerator BEFORE MinimumDeleteDistance) * 7
                        },
                    },
                    
                    {
                      COMMENT = [[2a: Test of INLINE MATH OP inside a VCT
                      1st operation get value * -6 = negative number
                      2nd operation retrieves the negative number * -7 = positive number
                      This could compile]],
                      PKW = [[GcBaseBuildingEntry.xml]],
                      REPLACE_TYPE = "ONCE", -- force only ONCE
                      WIS = {
                          {
                            [[BuildableOnPlanetBase]], [[True]],
                          },
                        },
                      VCT = {
                            {[[BuildEffectAccelerator]], "@*-6",}, -- Inline MATH_OP: new value = (current value) * 6
                            {[[MinimumDeleteDistance]], "@ -7 * FB:BuildEffectAccelerator",}, -- Inline MATH_OP: new value = (value of BuildEffectAccelerator BEFORE MinimumDeleteDistance) * 7
                        },
                    },
                    
                  },
                },
            },
        },
    }, --36 global replacements
}